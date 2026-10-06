.class Ll7/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/b;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll7/b$j;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ll7/b$j;

.field final synthetic d:Ll7/b;


# direct methods
.method constructor <init>(Ll7/b;Landroid/content/Context;Ljava/lang/String;Ll7/b$j;)V
    .locals 0

    iput-object p1, p0, Ll7/b$a;->d:Ll7/b;

    iput-object p2, p0, Ll7/b$a;->a:Landroid/content/Context;

    iput-object p3, p0, Ll7/b$a;->b:Ljava/lang/String;

    iput-object p4, p0, Ll7/b$a;->c:Ll7/b$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    move-object p2, p1

    check-cast p2, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ll7/b$a$a;

    invoke-direct {p2, p0}, Ll7/b$a$a;-><init>(Ll7/b$a;)V

    invoke-static {p2}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Ll7/b$a;->c:Ll7/b$j;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ll7/b$j;->a()V

    :cond_1
    return-void
.end method
