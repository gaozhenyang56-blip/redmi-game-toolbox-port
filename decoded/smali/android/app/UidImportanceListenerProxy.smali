.class public Landroid/app/UidImportanceListenerProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UidImportanceListenerProxy$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UidImportanceListener"


# instance fields
.field private mCallback:Landroid/app/UidImportanceListenerProxy$Callback;


# direct methods
.method private constructor <init>(Landroid/app/UidImportanceListenerProxy$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/UidImportanceListenerProxy;->mCallback:Landroid/app/UidImportanceListenerProxy$Callback;

    return-void
.end method

.method public static addOnUidImportanceListener(Landroid/content/Context;Landroid/app/UidImportanceListenerProxy$Callback;I)V
    .locals 7

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    :try_start_0
    const-string v0, "android.app.ActivityManager$OnUidImportanceListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/app/UidImportanceListenerProxy;

    invoke-direct {v1, p1}, Landroid/app/UidImportanceListenerProxy;-><init>(Landroid/app/UidImportanceListenerProxy$Callback;)V

    const-class p1, Landroid/app/UidImportanceListenerProxy;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "addOnUidImportanceListener"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UidImportanceListener"

    const-string p2, "addOnUidImportanceListener exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onUidImportance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/app/UidImportanceListenerProxy;->mCallback:Landroid/app/UidImportanceListenerProxy$Callback;

    if-eqz p1, :cond_5

    array-length p2, p3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    aget-object p2, p3, v0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/app/UidImportanceListenerProxy$Callback;->onUidImportance(II)V

    goto :goto_0

    :cond_0
    const-class p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    if-ne p1, p3, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    const-class p1, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    if-ne p1, p3, :cond_2

    return-object v1

    :cond_2
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    if-ne p1, p3, :cond_3

    return-object v1

    :cond_3
    const-class p1, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    if-ne p1, p3, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    if-ne p1, p2, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
