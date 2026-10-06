.class public abstract Lcom/miui/autotask/bean/f;
.super Lcom/miui/autotask/bean/c;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/autotask/taskitem/TaskItem;


# direct methods
.method constructor <init>(Lcom/miui/autotask/taskitem/TaskItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/bean/c;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/bean/f;->a:Lcom/miui/autotask/taskitem/TaskItem;

    return-void
.end method


# virtual methods
.method public b()Lcom/miui/autotask/taskitem/TaskItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/bean/f;->a:Lcom/miui/autotask/taskitem/TaskItem;

    return-object v0
.end method

.method public c(Lcom/miui/autotask/taskitem/TaskItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/bean/f;->a:Lcom/miui/autotask/taskitem/TaskItem;

    return-void
.end method
