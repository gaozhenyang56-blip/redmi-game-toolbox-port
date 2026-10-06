.class public final synthetic Lc4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc4/h;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lc4/h;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc4/g;->a:Lc4/h;

    iput-object p2, p0, Lc4/g;->b:Landroid/content/Intent;

    iput-object p3, p0, Lc4/g;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc4/g;->a:Lc4/h;

    iget-object v1, p0, Lc4/g;->b:Landroid/content/Intent;

    iget-object v2, p0, Lc4/g;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lc4/h;->a(Lc4/h;Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
