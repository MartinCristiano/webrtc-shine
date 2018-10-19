package com.shine.frontend.batch;


import com.shine.frontend.SecurityService;
import com.shine.frontend.UserService;
import com.shine.frontend.model.Role;
import com.shine.frontend.model.User;
import com.shine.frontend.repository.RoleRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TaskletStep implements Tasklet {

    private static final Logger log = LoggerFactory.getLogger(JobCompletionNotificationListener.class);
    @Autowired
    private UserService userService;

    @Autowired
    private RoleRepository roleRepository;


    @Override
    public RepeatStatus execute(StepContribution contribution, ChunkContext chunkContext)  {
        try{
            Role role= roleRepository.findRoleByName("ADMIN");
            User user = new User();
            user.addRole(role);
            user.setUsername("admin");
            user.setPassword("password");
            userService.save(user);
            role.addUser(user);
            roleRepository.save(role);
            //session.query("MATCH (a:FileNode) WHERE NOT ((a)-[:HAS_PARENT]->()) DETACH DELETE a;" ,Collections.EMPTY_MAP);
            log.info("!!! JOB FINISHED! Time to verify the results");
        }catch(Exception e){
            e.printStackTrace();
        }
        return RepeatStatus.FINISHED;
    }
}


