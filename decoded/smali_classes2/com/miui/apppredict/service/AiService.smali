.class public Lcom/miui/apppredict/service/AiService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/apppredict/service/AiService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/apppredict/service/AiService$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/miui/apppredict/service/AiService;->a:Lcom/miui/apppredict/service/AiService$a;

    invoke-virtual {p1}, Lcom/miui/apppredict/IAppPredict$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/miui/apppredict/service/AiService$a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/apppredict/service/AiService$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/apppredict/service/AiService;->a:Lcom/miui/apppredict/service/AiService$a;

    return-void
.end method
