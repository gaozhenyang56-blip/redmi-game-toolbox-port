.class Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->y(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;

.field final synthetic c:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;ILcom/miui/powercenter/autotask/AutoTaskManageActivity$e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;->c:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    iput p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;->a:I

    iput-object p3, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;->c:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    iget-boolean v0, p1, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->e:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->h:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    iget v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;->a:I

    invoke-static {p1, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->e0(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;

    iget-object p1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->e:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;->c:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    iget v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;->a:I

    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;

    iget-object v1, v1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->s(IZZ)V

    :goto_0
    return-void
.end method
