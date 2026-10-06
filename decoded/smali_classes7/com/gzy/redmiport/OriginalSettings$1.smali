.class Lcom/gzy/redmiport/OriginalSettings$1;
.super Ljava/lang/Object;
.source "OriginalSettings.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/OriginalSettings;->walk(Ljava/lang/Object;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$shortcut:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 69
    iput-boolean p1, p0, Lcom/gzy/redmiport/OriginalSettings$1;->val$shortcut:Z

    iput-object p2, p0, Lcom/gzy/redmiport/OriginalSettings$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/gzy/redmiport/OriginalSettings$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 71
    const/4 v4, 0x1

    .line 73
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 71
    if-ne v0, v1, :cond_3c

    .line 72
    const-string v0, "hashCode"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 73
    :cond_27
    const-string v0, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    aget-object p2, p3, v2

    if-ne p1, p2, :cond_38

    return-object v5

    :cond_38
    return-object v3

    .line 74
    :cond_39
    const-string p1, "OriginalSettingsListener"

    return-object p1

    .line 77
    :cond_3c
    :try_start_3c
    iget-boolean p1, p0, Lcom/gzy/redmiport/OriginalSettings$1;->val$shortcut:Z

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/gzy/redmiport/OriginalSettings$1;->val$context:Landroid/content/Context;

    aget-object p2, p3, v4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/gzy/redmiport/GameShortcut;->change(Landroid/content/Context;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 78
    :cond_53
    aget-object p1, p3, v4

    instance-of p1, p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/gzy/redmiport/OriginalSettings$1;->val$key:Ljava/lang/String;

    # invokes: Lcom/gzy/redmiport/OriginalSettings;->storageKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/gzy/redmiport/OriginalSettings;->access$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p3, v4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Z)V

    goto :goto_7a

    .line 79
    :cond_6b
    iget-object p1, p0, Lcom/gzy/redmiport/OriginalSettings$1;->val$key:Ljava/lang/String;

    aget-object p2, p3, v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;I)V

    .line 80
    :goto_7a
    iget-object p1, p0, Lcom/gzy/redmiport/OriginalSettings$1;->val$key:Ljava/lang/String;

    const-string p2, "port_sidebar_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 81
    aget-object p1, p3, v2

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "setValue"

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    aget-object p3, p3, v4

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "getEntry"

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "setSummary"

    const-class v1, Ljava/lang/CharSequence;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_cc
    iget-object p1, p0, Lcom/gzy/redmiport/OriginalSettings$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/gzy/redmiport/SidebarRuntime;->start(Landroid/content/Context;)V
    :try_end_d1
    .catchall {:try_start_3c .. :try_end_d1} :catchall_d2

    .line 87
    return-object v5

    .line 88
    :catchall_d2
    move-exception p1

    const-string p2, "Original settings save"

    invoke-static {p2, p1}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method
