.class public final synthetic Lw8/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lw8/q;

.field public final synthetic b:Lw8/e;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lw8/q;Lw8/e;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/l;->a:Lw8/q;

    iput-object p2, p0, Lw8/l;->b:Lw8/e;

    iput-object p3, p0, Lw8/l;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lw8/l;->a:Lw8/q;

    iget-object v1, p0, Lw8/l;->b:Lw8/e;

    iget-object v2, p0, Lw8/l;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1}, Lw8/q;->d(Lw8/q;Lw8/e;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
