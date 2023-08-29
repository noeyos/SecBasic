package com.ddit.sec.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Slf4j
@Controller
@RequestMapping("/angma")
public class SecController {

    @GetMapping("/soyeon")
    public String soyeon(Authentication auth) {
        log.debug("auth : {}", auth);
        log.debug("auth : {}", auth.getPrincipal());
        log.debug("auth : {}", ((User)auth.getPrincipal()).getUsername());
        log.debug("auth : {}", ((User)auth.getPrincipal()).getPassword());
        // principal이 object 라서 형변환을 해줘야 함
        log.debug("auth : {}", auth.getAuthorities());

        // 시큐리티 포인트!
        SecurityContext secCont = SecurityContextHolder.getContext();
        log.debug("check : {}", secCont);
        return "soyeon";
    }

    @GetMapping("/sysy")
    public String sysy() {
        return "sysy";
    }

    @PostMapping("/lee")
    @ResponseBody
    public String lee(@RequestBody String mName) {
        return mName + "success";
    }

}
