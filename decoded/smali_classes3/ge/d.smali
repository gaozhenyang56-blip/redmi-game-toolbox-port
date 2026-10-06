.class public final synthetic Lge/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lge/e;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lge/e;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lge/d;->a:Lge/e;

    iput-object p2, p0, Lge/d;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lge/d;->a:Lge/e;

    iget-object v1, p0, Lge/d;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lge/e;->a(Lge/e;Landroid/content/Intent;)V

    return-void
.end method
