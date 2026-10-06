.class public final synthetic Le5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le5/i$a;


# direct methods
.method public synthetic constructor <init>(Le5/i$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/h;->a:Le5/i$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le5/h;->a:Le5/i$a;

    invoke-static {v0}, Le5/i$a;->c(Le5/i$a;)V

    return-void
.end method
