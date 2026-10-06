.class public final synthetic Lt5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lt5/k$c;

.field public final synthetic b:Lt5/k;


# direct methods
.method public synthetic constructor <init>(Lt5/k$c;Lt5/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/l;->a:Lt5/k$c;

    iput-object p2, p0, Lt5/l;->b:Lt5/k;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lt5/l;->a:Lt5/k$c;

    iget-object v1, p0, Lt5/l;->b:Lt5/k;

    invoke-static {v0, v1, p1}, Lt5/k$c;->c(Lt5/k$c;Lt5/k;Landroid/view/View;)V

    return-void
.end method
