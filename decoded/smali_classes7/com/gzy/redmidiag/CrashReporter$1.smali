.class Lcom/gzy/redmidiag/CrashReporter$1;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmidiag/CrashReporter;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$previous:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/gzy/redmidiag/CrashReporter$1;->val$previous:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNCAUGHT / "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    iget-object v0, p0, Lcom/gzy/redmidiag/CrashReporter$1;->val$previous:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/gzy/redmidiag/CrashReporter$1;->val$previous:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 28
    :cond_20
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 29
    :goto_2c
    return-void
.end method
