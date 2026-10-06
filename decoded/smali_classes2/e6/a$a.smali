.class Le6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le6/a;


# direct methods
.method constructor <init>(Le6/a;)V
    .locals 0

    iput-object p1, p0, Le6/a$a;->a:Le6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Le6/a$a;->a:Le6/a;

    invoke-static {p1}, Le6/a;->a(Le6/a;)Lb6/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le6/a$a;->a:Le6/a;

    invoke-static {p1}, Le6/a;->a(Le6/a;)Lb6/a;

    move-result-object p1

    invoke-interface {p1}, Lb6/a;->a()V

    :cond_0
    return-void
.end method
