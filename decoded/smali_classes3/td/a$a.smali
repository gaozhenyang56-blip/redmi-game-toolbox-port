.class Ltd/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltd/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltd/a;


# direct methods
.method constructor <init>(Ltd/a;)V
    .locals 0

    iput-object p1, p0, Ltd/a$a;->a:Ltd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lme/h;->k(Z)V

    const/4 p2, 0x0

    invoke-static {p2}, Lme/h;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lme/h;->m(ZI)V

    :cond_1
    invoke-static {p1}, Lme/h;->i(I)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1, p1}, Lme/h;->m(ZI)V

    :cond_2
    :goto_0
    return-void
.end method
