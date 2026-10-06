.class Lcom/miui/powercenter/autotask/AutoTaskManageActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/AutoTaskManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$a;->a:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$a;->a:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->d0(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Lcom/miui/powercenter/autotask/FloatActionButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$a;->a:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->e0(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;I)V

    :cond_0
    return-void
.end method
