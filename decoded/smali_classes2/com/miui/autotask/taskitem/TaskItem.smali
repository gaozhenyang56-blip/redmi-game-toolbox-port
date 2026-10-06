.class public abstract Lcom/miui/autotask/taskitem/TaskItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field private instanceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instanceId"
    .end annotation
.end field

.field private taskChannel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "taskChannel"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/autotask/taskitem/TaskItem;->instanceId:Ljava/lang/String;

    const-string v0, "sc"

    iput-object v0, p0, Lcom/miui/autotask/taskitem/TaskItem;->taskChannel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/taskitem/TaskItem;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected f(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()I
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/taskitem/TaskItem;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/miui/autotask/taskitem/TaskItem;->code:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract l()Z
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public q(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/miui/autotask/taskitem/TaskItem;->code:I

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/TaskItem;->instanceId:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/TaskItem;->taskChannel:Ljava/lang/String;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/TaskItem;->uuid:Ljava/lang/String;

    return-void
.end method
