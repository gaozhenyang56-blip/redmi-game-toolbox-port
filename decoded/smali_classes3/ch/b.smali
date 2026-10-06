.class public final synthetic Lch/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lch/a$d;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lch/a$d;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/b;->a:Lch/a$d;

    iput-object p2, p0, Lch/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lch/b;->a:Lch/a$d;

    iget-object v1, p0, Lch/b;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lch/a$d;->e(Lch/a$d;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
