.class public final synthetic Lwe/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lwe/c;


# direct methods
.method public synthetic constructor <init>(Lwe/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwe/b;->a:Lwe/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwe/b;->a:Lwe/c;

    invoke-static {v0}, Lwe/c;->a(Lwe/c;)V

    return-void
.end method
