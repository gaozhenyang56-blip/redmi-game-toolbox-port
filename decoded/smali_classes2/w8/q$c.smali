.class public final Lw8/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/b$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw8/q;->k(Landroid/app/Activity;Lw8/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw8/e;


# direct methods
.method constructor <init>(Lw8/e;)V
    .locals 0

    iput-object p1, p0, Lw8/q$c;->a:Lw8/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lw8/q$c;->a:Lw8/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lw8/e;->b()V

    :cond_0
    return-void
.end method
