.class Lcom/miui/securityscan/fileobserver/ImageProtectService$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/fileobserver/ImageProtectService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/fileobserver/ImageProtectService;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/fileobserver/ImageProtectService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$a;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange isImageDelProtectOpen() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   isXSpaceEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$a;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-static {v1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->b(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$a;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-static {p1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->b(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$a;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-static {p1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->e(Lcom/miui/securityscan/fileobserver/ImageProtectService;)V

    :cond_0
    return-void
.end method
