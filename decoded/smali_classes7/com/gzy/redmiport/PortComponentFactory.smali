.class public final Lcom/gzy/redmiport/PortComponentFactory;
.super Landroidx/core/app/CoreComponentFactory;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroidx/core/app/CoreComponentFactory;-><init>()V
    return-void
.end method

.method public instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 2
    :try_start
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :normal
    const-string v1, ":diagnostics"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :normal
    new-instance v0, Lcom/gzy/redmiport/DiagnosticApplication;
    invoke-direct {v0}, Lcom/gzy/redmiport/DiagnosticApplication;-><init>()V
    return-object v0
    :normal
    invoke-super {p0, p1, p2}, Landroidx/core/app/CoreComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    move-result-object v0
    return-object v0
    :try_end
    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :bootstrap_failed
    :bootstrap_failed
    move-exception v0
    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->bootstrapFailure:Ljava/lang/Throwable;
    new-instance v0, Lcom/gzy/redmiport/DiagnosticApplication;
    invoke-direct {v0}, Lcom/gzy/redmiport/DiagnosticApplication;-><init>()V
    return-object v0
.end method
