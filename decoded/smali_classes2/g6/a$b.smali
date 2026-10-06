.class Lg6/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/a;->e(Lh6/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh6/a;

.field final synthetic b:Lg6/a;


# direct methods
.method constructor <init>(Lg6/a;Lh6/a;)V
    .locals 0

    iput-object p1, p0, Lg6/a$b;->b:Lg6/a;

    iput-object p2, p0, Lg6/a$b;->a:Lh6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lg6/a$b;->b:Lg6/a;

    invoke-static {p1}, Lg6/a;->a(Lg6/a;)Lh6/a;

    move-result-object p1

    iget-object v0, p0, Lg6/a$b;->a:Lh6/a;

    invoke-virtual {v0}, Lh6/a;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lh6/a;->j(I)V

    iget-object p1, p0, Lg6/a$b;->b:Lg6/a;

    invoke-static {p1}, Lg6/a;->b(Lg6/a;)V

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object p1

    iget-object v0, p0, Lg6/a$b;->b:Lg6/a;

    invoke-static {v0}, Lg6/a;->a(Lg6/a;)Lh6/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Li6/a;->m(Lh6/a;)V

    return-void
.end method
