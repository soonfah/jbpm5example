package com.sample;

import javax.ejb.Local;

@Local
public interface ProcessLocal {
    public long startProcess(String recipient) throws Exception;
}
