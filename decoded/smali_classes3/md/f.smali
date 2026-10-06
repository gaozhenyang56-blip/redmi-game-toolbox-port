.class public final synthetic Lmd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmd/g;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lmd/g;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd/f;->a:Lmd/g;

    iput-object p2, p0, Lmd/f;->b:Landroid/content/Intent;

    iput-object p3, p0, Lmd/f;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmd/f;->a:Lmd/g;

    iget-object v1, p0, Lmd/f;->b:Landroid/content/Intent;

    iget-object v2, p0, Lmd/f;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lmd/g;->m(Lmd/g;Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
