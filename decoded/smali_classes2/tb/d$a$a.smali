.class Ltb/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/optimizemanage/view/StateCheckBox$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltb/d$a;-><init>(Landroid/view/View;Ltb/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltb/d$b;

.field final synthetic b:Ltb/d$a;


# direct methods
.method constructor <init>(Ltb/d$a;Ltb/d$b;)V
    .locals 0

    iput-object p1, p0, Ltb/d$a$a;->b:Ltb/d$a;

    iput-object p2, p0, Ltb/d$a$a;->a:Ltb/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Landroid/view/View;Lcom/miui/optimizemanage/view/StateCheckBox$c;)V
    .locals 0

    iget-object p1, p0, Ltb/d$a$a;->a:Ltb/d$b;

    if-eqz p1, :cond_0

    iget-object p2, p0, Ltb/d$a$a;->b:Ltb/d$a;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Ltb/d$b;->a(I)V

    :cond_0
    return-void
.end method
