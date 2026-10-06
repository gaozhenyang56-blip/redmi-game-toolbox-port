.class Ld8/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld8/e;


# direct methods
.method constructor <init>(Ld8/e;)V
    .locals 0

    iput-object p1, p0, Ld8/e$a;->a:Ld8/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {}, Lj8/p;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Li8/c;->v()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {p2}, La8/u;->c(Z)V

    :cond_1
    iget-object p1, p0, Ld8/e$a;->a:Ld8/e;

    invoke-static {p1, p2}, Ld8/e;->a(Ld8/e;Z)Z

    return-void
.end method
