.class Lcom/miui/securityscan/fileobserver/ImageProtectService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvf/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/fileobserver/ImageProtectService;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvf/b<",
        "Ljava/util/List<",
        "Lvf/m;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/fileobserver/ImageProtectService;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/fileobserver/ImageProtectService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$b;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvf/m;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$b;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-static {v0, p1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->f(Lcom/miui/securityscan/fileobserver/ImageProtectService;Ljava/util/List;)V

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load fail msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/fileobserver/ImageProtectService$b;->a(Ljava/util/List;)V

    return-void
.end method
