.class public final synthetic Ld7/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ld7/l$f;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ld7/l$f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/t;->a:Ld7/l$f;

    iput-object p2, p0, Ld7/t;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ld7/t;->a:Ld7/l$f;

    iget-object v1, p0, Ld7/t;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Ld7/l$f;->a(Ld7/l$f;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
