package com.oppo.camera;

import com.oppo.camera.gl.q;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* compiled from: ParallelHelper */
public class p {
    public static <T> T a(q qVar, Callable<T> callable) {
        FutureTask futureTask = new FutureTask(callable);
        d.a("ParallelHelper", "executeAndWait, queueEvent before");
        qVar.a((Runnable) futureTask);
        d.a("ParallelHelper", "executeAndWait, queueEvent after");
        T t = null;
        try {
            d.a("ParallelHelper", "executeAndWait, get before");
            t = futureTask.get();
            d.a("ParallelHelper", "executeAndWait, get after");
            return t;
        } catch (ExecutionException e) {
            d.a("ParallelHelper", "executeAndWait, ExecutionException: " + e.getMessage());
            return t;
        } catch (InterruptedException e2) {
            d.a("ParallelHelper", "executeAndWait, InterruptedException: " + e2.getMessage());
            return t;
        }
    }
}
