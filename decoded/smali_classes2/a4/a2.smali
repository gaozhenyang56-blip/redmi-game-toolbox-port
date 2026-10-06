.class public final synthetic La4/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lmiuix/androidbasewidget/widget/SeekBar;

.field public final synthetic b:Lmiuix/androidbasewidget/widget/SeekBar;

.field public final synthetic c:Lmiuix/androidbasewidget/widget/SeekBar;

.field public final synthetic d:La4/e2$g;


# direct methods
.method public synthetic constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;La4/e2$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/a2;->a:Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object p2, p0, La4/a2;->b:Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object p3, p0, La4/a2;->c:Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object p4, p0, La4/a2;->d:La4/e2$g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, La4/a2;->a:Lmiuix/androidbasewidget/widget/SeekBar;

    iget-object v1, p0, La4/a2;->b:Lmiuix/androidbasewidget/widget/SeekBar;

    iget-object v2, p0, La4/a2;->c:Lmiuix/androidbasewidget/widget/SeekBar;

    iget-object v3, p0, La4/a2;->d:La4/e2$g;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, La4/e2;->S(Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;Lmiuix/androidbasewidget/widget/SeekBar;La4/e2$g;Landroid/content/DialogInterface;I)V

    return-void
.end method
