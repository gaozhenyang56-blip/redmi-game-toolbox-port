.class public final synthetic Ld5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ld5/d;

.field public final synthetic b:Lg5/j;

.field public final synthetic c:Ld5/d$b;


# direct methods
.method public synthetic constructor <init>(Ld5/d;Lg5/j;Ld5/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5/a;->a:Ld5/d;

    iput-object p2, p0, Ld5/a;->b:Lg5/j;

    iput-object p3, p0, Ld5/a;->c:Ld5/d$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ld5/a;->a:Ld5/d;

    iget-object v1, p0, Ld5/a;->b:Lg5/j;

    iget-object v2, p0, Ld5/a;->c:Ld5/d$b;

    invoke-static {v0, v1, v2, p1}, Ld5/d;->m(Ld5/d;Lg5/j;Ld5/d$b;Landroid/view/View;)V

    return-void
.end method
