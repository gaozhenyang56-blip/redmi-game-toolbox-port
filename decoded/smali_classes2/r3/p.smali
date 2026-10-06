.class public final synthetic Lr3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/taskitem/TaskItem;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/taskitem/TaskItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/p;->a:Lcom/miui/autotask/taskitem/TaskItem;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lr3/p;->a:Lcom/miui/autotask/taskitem/TaskItem;

    invoke-static {v0, p1, p2}, Lr3/q;->k(Lcom/miui/autotask/taskitem/TaskItem;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
