.class Lcom/miui/gamebooster/ui/WhiteListFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/WhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/WhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$b;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$b;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->i0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$b;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->j0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Lmiuix/view/l$b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->k0(Lcom/miui/gamebooster/ui/WhiteListFragment;Lmiuix/view/l$b;)V

    :cond_0
    return-void
.end method
