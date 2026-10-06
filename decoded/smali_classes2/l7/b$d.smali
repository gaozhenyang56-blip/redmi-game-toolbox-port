.class Ll7/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/b;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll7/b$j;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/appcompat/app/AlertDialog;

.field final synthetic b:Ll7/b;


# direct methods
.method constructor <init>(Ll7/b;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Ll7/b$d;->b:Ll7/b;

    iput-object p2, p0, Ll7/b$d;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Ll7/b$d;->a:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method
