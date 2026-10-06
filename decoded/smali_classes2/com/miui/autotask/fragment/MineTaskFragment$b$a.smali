.class Lcom/miui/autotask/fragment/MineTaskFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/fragment/MineTaskFragment$b;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/autotask/fragment/MineTaskFragment$b;


# direct methods
.method constructor <init>(Lcom/miui/autotask/fragment/MineTaskFragment$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b$a;->b:Lcom/miui/autotask/fragment/MineTaskFragment$b;

    iput p2, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b$a;->b:Lcom/miui/autotask/fragment/MineTaskFragment$b;

    iget-object v0, v0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object v0

    iget v1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method
