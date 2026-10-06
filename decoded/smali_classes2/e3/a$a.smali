.class Le3/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/a;->p(Lh3/g;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Le3/a;


# direct methods
.method constructor <init>(Le3/a;I)V
    .locals 0

    iput-object p1, p0, Le3/a$a;->b:Le3/a;

    iput p2, p0, Le3/a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le3/a$a;->b:Le3/a;

    invoke-static {p1}, Le3/a;->k(Le3/a;)Le3/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le3/a$a;->b:Le3/a;

    invoke-static {p1}, Le3/a;->k(Le3/a;)Le3/a$b;

    move-result-object p1

    iget v0, p0, Le3/a$a;->a:I

    invoke-interface {p1, v0}, Le3/a$b;->onItemClick(I)V

    :cond_0
    return-void
.end method
