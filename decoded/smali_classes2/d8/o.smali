.class public final synthetic Ld8/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld8/n$b;


# direct methods
.method public synthetic constructor <init>(Ld8/n$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8/o;->a:Ld8/n$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld8/o;->a:Ld8/n$b;

    invoke-static {v0}, Ld8/n$b;->a(Ld8/n$b;)V

    return-void
.end method
