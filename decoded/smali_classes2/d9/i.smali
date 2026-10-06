.class public final synthetic Ld9/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld9/j;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ld9/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld9/i;->a:Ljava/lang/String;

    iput-object p2, p0, Ld9/i;->b:Ld9/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ld9/i;->a:Ljava/lang/String;

    iget-object v1, p0, Ld9/i;->b:Ld9/j;

    invoke-static {v0, v1}, Ld9/j;->a(Ljava/lang/String;Ld9/j;)V

    return-void
.end method
