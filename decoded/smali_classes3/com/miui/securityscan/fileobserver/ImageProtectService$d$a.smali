.class Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvf/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/fileobserver/ImageProtectService$d;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvf/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/fileobserver/ImageProtectService;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:J

.field final synthetic h:Lcom/miui/securityscan/fileobserver/ImageProtectService$d;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/fileobserver/ImageProtectService$d;Lcom/miui/securityscan/fileobserver/ImageProtectService;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->h:Lcom/miui/securityscan/fileobserver/ImageProtectService$d;

    iput-object p2, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    iput-object p3, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->b:Ljava/util/List;

    iput p4, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->c:I

    iput p5, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->d:I

    iput-object p6, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->f:Ljava/lang/String;

    iput-wide p8, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 9

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->b:Ljava/util/List;

    iget v2, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->c:I

    iget v3, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->d:I

    iget-object v4, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->f:Ljava/lang/String;

    iget-wide v7, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->g:J

    const/4 v6, 0x1

    invoke-static/range {v0 .. v8}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->B(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
