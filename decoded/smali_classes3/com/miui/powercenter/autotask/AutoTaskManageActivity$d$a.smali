.class Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->y(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/AutoTask;

.field final synthetic b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$a;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$a;->a:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$a;->a:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$a;->a:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2}, Lcom/miui/powercenter/autotask/g;->e(Landroid/content/Context;JZ)V

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/autotask/h;->f(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lhd/b;->p()V

    return-void
.end method
