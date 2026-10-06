.class public final synthetic Ly8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ly8/f;

.field public final synthetic b:Lb9/b;


# direct methods
.method public synthetic constructor <init>(Ly8/f;Lb9/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/e;->a:Ly8/f;

    iput-object p2, p0, Ly8/e;->b:Lb9/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ly8/e;->a:Ly8/f;

    iget-object v1, p0, Ly8/e;->b:Lb9/b;

    invoke-static {v0, v1, p1}, Ly8/f;->a(Ly8/f;Lb9/b;Landroid/view/View;)V

    return-void
.end method
