.class public final synthetic Ly5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly5/i$b;


# direct methods
.method public synthetic constructor <init>(Ly5/i$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5/j;->a:Ly5/i$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly5/j;->a:Ly5/i$b;

    invoke-static {v0}, Ly5/i$b;->a(Ly5/i$b;)V

    return-void
.end method
