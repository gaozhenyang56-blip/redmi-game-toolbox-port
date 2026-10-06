.class public final synthetic Lmd/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmd/h$c;


# direct methods
.method public synthetic constructor <init>(Lmd/h$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd/l;->a:Lmd/h$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmd/l;->a:Lmd/h$c;

    invoke-static {v0}, Lmd/h$c;->a(Lmd/h$c;)V

    return-void
.end method
