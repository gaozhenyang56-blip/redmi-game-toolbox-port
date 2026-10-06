.class public final synthetic Lt9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lt9/e$b;


# direct methods
.method public synthetic constructor <init>(Lt9/e$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/b;->a:Lt9/e$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lt9/b;->a:Lt9/e$b;

    invoke-static {v0, p1}, Lt9/e;->n(Lt9/e$b;Landroid/view/View;)V

    return-void
.end method
