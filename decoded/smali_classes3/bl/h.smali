.class public Lbl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = true

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/Boolean;

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Ljava/lang/reflect/Method;

.field public static f:Ljava/lang/reflect/Method;

.field public static g:Ljava/lang/reflect/Method;

.field public static h:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    sget-boolean v0, Lbl/h;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "persist.sys.background_blur_supported"

    const-string v1, "false"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    sput-object v0, Lbl/h;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/view/View;II)Z
    .locals 7

    sget-object v0, Lbl/h;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    sget-object v0, Lbl/h;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_2

    const-class v0, Landroid/view/View;

    const-string v4, "addMiBackgroundBlendColor"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lbl/h;->f:Ljava/lang/reflect/Method;

    :cond_2
    sget-object v0, Lbl/h;->f:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const/4 p0, 0x0

    sput-object p0, Lbl/h;->f:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static b(Landroid/view/View;)Z
    .locals 4

    sget-object v0, Lbl/h;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget-object v0, Lbl/h;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    const-class v0, Landroid/view/View;

    const-string v2, "clearMiBackgroundBlendColor"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lbl/h;->g:Ljava/lang/reflect/Method;

    :cond_1
    sget-object v0, Lbl/h;->g:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    sput-object p0, Lbl/h;->g:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static c(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbl/h;->i(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lbl/h;->j(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static declared-synchronized d()V
    .locals 2

    const-class v0, Lbl/h;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lbl/h;->c:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lbl/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbl/h;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    if-nez p0, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    :try_start_1
    sget-object v1, Lbl/h;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "background_blur_enable"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    move v2, v1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lbl/h;->c:Ljava/lang/Boolean;

    :cond_3
    sget-object p0, Lbl/h;->c:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f()Z
    .locals 1

    sget-object v0, Lbl/h;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;II)Z
    .locals 6

    sget-object v0, Lbl/h;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x190

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :try_start_0
    sget-object v0, Lbl/h;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const-class v0, Landroid/view/View;

    const-string v3, "setMiBackgroundBlurMode"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lbl/h;->d:Ljava/lang/reflect/Method;

    :cond_3
    sget-object v0, Lbl/h;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    const-class v0, Landroid/view/View;

    const-string v3, "setMiBackgroundBlurRadius"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lbl/h;->e:Ljava/lang/reflect/Method;

    :cond_4
    sget-object v0, Lbl/h;->d:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbl/h;->e:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p2}, Lbl/h;->j(Landroid/view/View;I)Z

    move-result p0

    return p0

    :catch_0
    const/4 p0, 0x0

    sput-object p0, Lbl/h;->d:Ljava/lang/reflect/Method;

    sput-object p0, Lbl/h;->e:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static h(Landroid/view/View;IZ)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-static {p0, p1, p2}, Lbl/h;->g(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public static i(Landroid/view/View;I)Z
    .locals 6

    sget-object v0, Lbl/h;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget-object v0, Lbl/h;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-class v0, Landroid/view/View;

    const-string v3, "setMiBackgroundBlurMode"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lbl/h;->d:Ljava/lang/reflect/Method;

    :cond_1
    sget-object v0, Lbl/h;->d:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 p0, 0x0

    sput-object p0, Lbl/h;->d:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static j(Landroid/view/View;I)Z
    .locals 6

    sget-object v0, Lbl/h;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget-object v0, Lbl/h;->h:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-class v0, Landroid/view/View;

    const-string v3, "setMiViewBlurMode"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lbl/h;->h:Ljava/lang/reflect/Method;

    :cond_1
    sget-object v0, Lbl/h;->h:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 p0, 0x0

    sput-object p0, Lbl/h;->h:Ljava/lang/reflect/Method;

    return v1
.end method
