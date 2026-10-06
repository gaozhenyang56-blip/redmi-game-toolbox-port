.class public final synthetic Ld5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Ld5/d;

.field public final synthetic b:I

.field public final synthetic c:Lg5/j;


# direct methods
.method public synthetic constructor <init>(Ld5/d;ILg5/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5/b;->a:Ld5/d;

    iput p2, p0, Ld5/b;->b:I

    iput-object p3, p0, Ld5/b;->c:Lg5/j;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Ld5/b;->a:Ld5/d;

    iget v1, p0, Ld5/b;->b:I

    iget-object v2, p0, Ld5/b;->c:Lg5/j;

    invoke-static {v0, v1, v2, p1}, Ld5/d;->l(Ld5/d;ILg5/j;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
