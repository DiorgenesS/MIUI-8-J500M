.class Landroid/media/TtmlRenderingWidget$CustomTextView;
.super Landroid/widget/TextView;
.source "TtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TtmlRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomTextView"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mTtmlCue:Landroid/media/TtmlCue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1114
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1110
    const-string v0, "CustomTextView"

    iput-object v0, p0, Landroid/media/TtmlRenderingWidget$CustomTextView;->TAG:Ljava/lang/String;

    .line 1115
    return-void
.end method


# virtual methods
.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 1136
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1137
    .local v1, "widthSpec":I
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1139
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/TtmlRenderingWidget$CustomTextView;->measure(II)V

    .line 1140
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/TtmlRenderingWidget$CustomTextView;->layout(IIII)V

    .line 1141
    return-void
.end method

.method public setTtmlCue(Landroid/media/TtmlCue;)V
    .locals 0
    .param p1, "cue"    # Landroid/media/TtmlCue;

    .prologue
    .line 1118
    iput-object p1, p0, Landroid/media/TtmlRenderingWidget$CustomTextView;->mTtmlCue:Landroid/media/TtmlCue;

    .line 1119
    return-void
.end method
