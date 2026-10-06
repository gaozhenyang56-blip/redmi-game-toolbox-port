.class public final synthetic Ld8/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld8/n$c;


# direct methods
.method public synthetic constructor <init>(Ld8/n$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8/p;->a:Ld8/n$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld8/p;->a:Ld8/n$c;

    invoke-static {v0}, Ld8/n$c;->a(Ld8/n$c;)V

    return-void
.end method
