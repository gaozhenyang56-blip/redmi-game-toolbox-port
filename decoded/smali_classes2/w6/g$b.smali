.class Lw6/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/g;->m(Lw6/g$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw6/g$d;

.field final synthetic b:Lw6/g;


# direct methods
.method constructor <init>(Lw6/g;Lw6/g$d;)V
    .locals 0

    iput-object p1, p0, Lw6/g$b;->b:Lw6/g;

    iput-object p2, p0, Lw6/g$b;->a:Lw6/g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpinnerDismiss()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lw6/g$b;->a:Lw6/g$d;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method
