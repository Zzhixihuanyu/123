package com.example.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.http.*;
import com.example.util.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/common")
public class AuthCodeController {
@RequestMapping("/authCode")
public void authCode(HttpServletResponse response, HttpSession session) throws IOException
{
	BufferedImage image = FormatAuthCode.getAuthCode(4,80,30,session);
	ImageIO.write(image,"jpg",response.getOutputStream());
}
}
