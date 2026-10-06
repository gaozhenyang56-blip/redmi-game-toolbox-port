.class public final synthetic Lv3/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/fragment/MineTaskFragment;

.field public final synthetic b:Landroid/view/ActionMode;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/fragment/MineTaskFragment;Landroid/view/ActionMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/u1;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    iput-object p2, p0, Lv3/u1;->b:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lv3/u1;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    iget-object v1, p0, Lv3/u1;->b:Landroid/view/ActionMode;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/autotask/fragment/MineTaskFragment;->c0(Lcom/miui/autotask/fragment/MineTaskFragment;Landroid/view/ActionMode;Landroid/content/DialogInterface;I)V

    return-void
.end method
