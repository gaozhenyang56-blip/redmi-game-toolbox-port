.class public final synthetic La5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:La5/b;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(La5/b;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/a;->a:La5/b;

    iput p2, p0, La5/a;->b:I

    iput p3, p0, La5/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, La5/a;->a:La5/b;

    iget v1, p0, La5/a;->b:I

    iget v2, p0, La5/a;->c:I

    invoke-static {v0, v1, v2, p1}, La5/b;->l(La5/b;IILandroid/view/View;)V

    return-void
.end method
