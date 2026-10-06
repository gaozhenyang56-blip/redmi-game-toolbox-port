.class public final synthetic Lkc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkc/q;


# direct methods
.method public synthetic constructor <init>(Lkc/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/k;->a:Lkc/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lkc/k;->a:Lkc/q;

    invoke-static {v0}, Lkc/q;->e(Lkc/q;)V

    return-void
.end method
