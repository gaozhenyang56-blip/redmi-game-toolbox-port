.class public abstract Lcom/miui/autotask/taskitem/SwitchTypeItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# instance fields
.field private switchValue:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    return-void
.end method


# virtual methods
.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/autotask/taskitem/SwitchTypeItem;->switchValue:Z

    return v0
.end method

.method public w()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/autotask/taskitem/SwitchTypeItem;->switchValue:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/autotask/taskitem/SwitchTypeItem;->switchValue:Z

    return-void
.end method
