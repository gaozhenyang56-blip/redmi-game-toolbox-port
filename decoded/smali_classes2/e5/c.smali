.class public final synthetic Le5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le5/i;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Le5/i;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/c;->a:Le5/i;

    iput-boolean p2, p0, Le5/c;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le5/c;->a:Le5/i;

    iget-boolean v1, p0, Le5/c;->b:Z

    invoke-static {v0, v1}, Le5/i;->d(Le5/i;Z)V

    return-void
.end method
