.class Lcom/miui/powercenter/autotask/AutoTaskManageActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ActionMode;

.field final synthetic b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$c;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$c;->a:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$c;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-static {p1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->f0(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Long;

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$c;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-static {p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->f0(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$c;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/miui/powercenter/autotask/g;->d(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;[Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$c;->a:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
