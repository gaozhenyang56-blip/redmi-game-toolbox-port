.class Ll2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/f;->r(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Ll2/f;


# direct methods
.method constructor <init>(Ll2/f;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Ll2/f$a;->c:Ll2/f;

    iput-object p2, p0, Ll2/f$a;->a:Landroid/widget/TextView;

    iput-object p3, p0, Ll2/f$a;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ll2/f$a;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ll2/f$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Ll2/f$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
