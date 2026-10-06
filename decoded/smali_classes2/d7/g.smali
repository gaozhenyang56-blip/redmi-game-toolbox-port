.class public final synthetic Ld7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld7/l;


# direct methods
.method public synthetic constructor <init>(Ld7/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/g;->a:Ld7/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld7/g;->a:Ld7/l;

    invoke-static {v0}, Ld7/l;->e(Ld7/l;)V

    return-void
.end method
