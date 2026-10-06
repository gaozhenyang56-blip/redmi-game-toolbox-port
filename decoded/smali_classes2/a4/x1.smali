.class public final synthetic La4/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:La4/e2$f;

.field public final synthetic b:Lmiuix/androidbasewidget/widget/SeekBar;


# direct methods
.method public synthetic constructor <init>(La4/e2$f;Lmiuix/androidbasewidget/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/x1;->a:La4/e2$f;

    iput-object p2, p0, La4/x1;->b:Lmiuix/androidbasewidget/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, La4/x1;->a:La4/e2$f;

    iget-object v1, p0, La4/x1;->b:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0, v1, p1, p2}, La4/e2;->R(La4/e2$f;Lmiuix/androidbasewidget/widget/SeekBar;Landroid/content/DialogInterface;I)V

    return-void
.end method
